class SummaryModel {
  String? typename;
  String? accessibilityLabel;
  OverallScoreWithDescriptionA11y? overallScoreWithDescriptionA11y;
  PropertyReviewCountDetails? propertyReviewCountDetails;
  String? reviewDisclaimer;
  String? reviewDisclaimerLabel;
  dynamic reviewDisclaimerAccessibilityLabel;
  ReviewDisclaimerUrl? reviewDisclaimerUrl;
  List<ReviewSummaryDetails>? reviewSummaryDetails;

  SummaryModel({
    this.typename,
    this.accessibilityLabel,
    this.overallScoreWithDescriptionA11y,
    this.propertyReviewCountDetails,
    this.reviewDisclaimer,
    this.reviewDisclaimerLabel,
    this.reviewDisclaimerAccessibilityLabel,
    this.reviewDisclaimerUrl,
    this.reviewSummaryDetails,
  });

  SummaryModel.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    accessibilityLabel = json['accessibilityLabel'] as String?;
    overallScoreWithDescriptionA11y =
        (json['overallScoreWithDescriptionA11y'] as Map<String, dynamic>?) !=
                null
            ? OverallScoreWithDescriptionA11y.fromJson(
                json['overallScoreWithDescriptionA11y'] as Map<String, dynamic>)
            : null;
    propertyReviewCountDetails =
        (json['propertyReviewCountDetails'] as Map<String, dynamic>?) != null
            ? PropertyReviewCountDetails.fromJson(
                json['propertyReviewCountDetails'] as Map<String, dynamic>)
            : null;
    reviewDisclaimer = json['reviewDisclaimer'] as String?;
    reviewDisclaimerLabel = json['reviewDisclaimerLabel'] as String?;
    reviewDisclaimerAccessibilityLabel =
        json['reviewDisclaimerAccessibilityLabel'];
    reviewDisclaimerUrl =
        (json['reviewDisclaimerUrl'] as Map<String, dynamic>?) != null
            ? ReviewDisclaimerUrl.fromJson(
                json['reviewDisclaimerUrl'] as Map<String, dynamic>)
            : null;
    reviewSummaryDetails = (json['reviewSummaryDetails'] as List?)
        ?.map((dynamic e) =>
            ReviewSummaryDetails.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['accessibilityLabel'] = accessibilityLabel;
    json['overallScoreWithDescriptionA11y'] =
        overallScoreWithDescriptionA11y?.toJson();
    json['propertyReviewCountDetails'] = propertyReviewCountDetails?.toJson();
    json['reviewDisclaimer'] = reviewDisclaimer;
    json['reviewDisclaimerLabel'] = reviewDisclaimerLabel;
    json['reviewDisclaimerAccessibilityLabel'] =
        reviewDisclaimerAccessibilityLabel;
    json['reviewDisclaimerUrl'] = reviewDisclaimerUrl?.toJson();
    json['reviewSummaryDetails'] =
        reviewSummaryDetails?.map((e) => e.toJson()).toList();
    return json;
  }
}

class OverallScoreWithDescriptionA11y {
  String? typename;
  String? accessibilityLabel;
  String? value;

  OverallScoreWithDescriptionA11y({
    this.typename,
    this.accessibilityLabel,
    this.value,
  });

  OverallScoreWithDescriptionA11y.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    accessibilityLabel = json['accessibilityLabel'] as String?;
    value = json['value'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['accessibilityLabel'] = accessibilityLabel;
    json['value'] = value;
    return json;
  }
}

class PropertyReviewCountDetails {
  String? typename;
  String? fullDescription;

  PropertyReviewCountDetails({
    this.typename,
    this.fullDescription,
  });

  PropertyReviewCountDetails.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    fullDescription = json['fullDescription'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['fullDescription'] = fullDescription;
    return json;
  }
}

class ReviewDisclaimerUrl {
  String? typename;
  String? value;
  Link? link;

  ReviewDisclaimerUrl({
    this.typename,
    this.value,
    this.link,
  });

  ReviewDisclaimerUrl.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    value = json['value'] as String?;
    link = (json['link'] as Map<String, dynamic>?) != null
        ? Link.fromJson(json['link'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['value'] = value;
    json['link'] = link?.toJson();
    return json;
  }
}

class Link {
  String? typename;
  Urijsn? urijsn;

  Link({
    this.typename,
    this.urijsn,
  });

  Link.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    urijsn = (json['urijsn'] as Map<String, dynamic>?) != null
        ? Urijsn.fromJson(json['urijsn'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['urijsn'] = urijsn?.toJson();
    return json;
  }
}

class Urijsn {
  String? typename;
  String? value;

  Urijsn({
    this.typename,
    this.value,
  });

  Urijsn.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    value = json['value'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['value'] = value;
    return json;
  }
}

class ReviewSummaryDetails {
  String? typename;
  String? label;
  int? ratingPercentage;
  FormattedRatingOutOfMaxA11y? formattedRatingOutOfMaxA11y;

  ReviewSummaryDetails({
    this.typename,
    this.label,
    this.ratingPercentage,
    this.formattedRatingOutOfMaxA11y,
  });

  ReviewSummaryDetails.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    label = json['label'] as String?;
    ratingPercentage = json['ratingPercentage'] as int?;
    formattedRatingOutOfMaxA11y =
        (json['formattedRatingOutOfMaxA11y'] as Map<String, dynamic>?) != null
            ? FormattedRatingOutOfMaxA11y.fromJson(
                json['formattedRatingOutOfMaxA11y'] as Map<String, dynamic>)
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['label'] = label;
    json['ratingPercentage'] = ratingPercentage;
    json['formattedRatingOutOfMaxA11y'] = formattedRatingOutOfMaxA11y?.toJson();
    return json;
  }
}

class FormattedRatingOutOfMaxA11y {
  String? typename;
  String? accessibilityLabel;
  String? value;

  FormattedRatingOutOfMaxA11y({
    this.typename,
    this.accessibilityLabel,
    this.value,
  });

  FormattedRatingOutOfMaxA11y.fromJson(Map<String, dynamic> json) {
    typename = json['__typename'] as String?;
    accessibilityLabel = json['accessibilityLabel'] as String?;
    value = json['value'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['__typename'] = typename;
    json['accessibilityLabel'] = accessibilityLabel;
    json['value'] = value;
    return json;
  }
}
