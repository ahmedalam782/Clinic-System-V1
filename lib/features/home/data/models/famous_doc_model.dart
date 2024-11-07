class FamousDocModel {
  final String name;
  final String experience;
  final double rating;
  final String specialtyTitle;
  final String? specialtyImage;
  final String? imageDoctor;

  FamousDocModel({
    required this.name,
    required this.experience,
    required this.rating,
    required this.specialtyTitle,
    this.specialtyImage,
    this.imageDoctor,
  });
}
