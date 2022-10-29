resource "aws_sns_topic" "this" {
  name = "${var.project}-sns-topic-${var.env}"
  merge({ Name = "${var.project}-sns-topic-${var.env}" }, var.tags)
}