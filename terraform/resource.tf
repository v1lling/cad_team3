
module "template_files" {
  source = "hashicorp/dir/template"
  version = "1.0.2"
  base_dir = "../dist"
}

module "template_files_assets" {
  source = "hashicorp/dir/template"
  version = "1.0.2"
  base_dir = "../dist/assets"
}

resource "aws_s3_bucket" "dist_bucket" {
  bucket = "cad-team3-frontend-tf"
  policy = data.aws_iam_policy_document.allow_access_from_all.json
  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "root" {
  bucket = "${aws_s3_bucket.dist_bucket.id}"

  for_each = module.template_files.files
  key    = each.key
  content_type = each.value.content_type
  source  = each.value.source_path
  content = each.value.content
  etag = each.value.digests.md5
}

resource "aws_s3_bucket_object" "assets" {
  bucket = "${aws_s3_bucket.dist_bucket.id}"

  for_each = module.template_files_assets.files
  key    = each.key
  content_type = each.value.content_type
  source  = each.value.source_path
  content = each.value.content
  etag = each.value.digests.md5
}

data "aws_iam_policy_document" "allow_access_from_all" {
  statement {
    sid = "PublicReadAccess"
    principals {
      type        = "*"
      identifiers = ["*"]
    }
    actions = [
      "s3:GetObject"
    ]
    effect = "Allow"
    resources = [
      "arn:aws:s3:::cad-team3-frontend-tf/*",
    ]
  }
}
