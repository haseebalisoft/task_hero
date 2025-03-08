import 'package:cocoon/res/constants/app_colors.dart';
import 'package:cocoon/res/constants/imports.dart';
import 'package:flutter/material.dart';

class ServiceRequestDetails extends StatefulWidget {
  @override
  State<ServiceRequestDetails> createState() => _ServiceRequestDetailsState();
}

class _ServiceRequestDetailsState extends State<ServiceRequestDetails> {
  bool changeDelete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: false,
        title: const Text(
          "Service Request Details",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.black1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/more.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow('Requested', '14-03-2024 09:47 PM'),
              const SizedBox(height: 8),
              _buildDetailRow('Status', changeDelete ? "Pending" : 'Error',
                  statusColor: changeDelete ? AppColors.orange : Colors.red),
              const SizedBox(height: 8),
              _buildDetailRow('Error in', '1 document'),
              const SizedBox(height: 8),
              _buildDetailRow('Submitted Documents', '3'),
              const SizedBox(height: 16),
              const Text(
                'Submitted documents',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 8),
              _buildDocumentTile(
                'My Cv v25324 aer gergve.pdf',
                isValid: true,
              ),
              changeDelete
                  ? const SizedBox()
                  : _buildDocumentTile(
                      'doc362347_437247351739_4...',
                      isValid: false,
                      onRemove: () {
                        changeDelete = !changeDelete;
                        setState(() {});
                      },
                    ),
              _buildDocumentTile(
                'doc362347_437247351739_4...',
                isValid: true,
              ),
              SizedBox(height: 16),
              DocUploadWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {Color? statusColor}) {
    return Row(
      children: [
        Expanded(
            child: Text(label,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14))),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
                color: statusColor ?? AppColors.textGrey, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildDocumentTile(String documentName,
      {bool isValid = true, VoidCallback? onRemove}) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: const EdgeInsets.only(bottom: 8, right: 8),
            decoration: BoxDecoration(
                color: isValid ? Colors.green[50] : Colors.red[50],
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              documentName,
              style: TextStyle(
                  color: isValid ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ),
        ),
        isValid
            ? SvgPicture.asset("assets/icons/tick.svg")
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset("assets/icons/de.svg"),
                    onPressed: onRemove,
                  ),
                  SvgPicture.asset("assets/icons/crossd.svg"),
                ],
              ),
      ],
    );
  }
}

class DocUploadWidget extends StatelessWidget {
  const DocUploadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Upload Documents",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            "Please remove the faulty document & resubmit original document without any issues.",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              onPressed: () {
                // Handle file upload action
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.upload_file, color: Colors.white),
                  const SizedBox(width: 8.0),
                  const Text(
                    ".pdf, .doc, .docx formats only",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
