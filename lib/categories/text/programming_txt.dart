import 'package:flutter/material.dart';

import '../../constant.dart';

class ReadProggmingText extends StatelessWidget {
  const ReadProggmingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Top Programming Languages',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        SelectableText(
          'Some important Programming languages to consider:-',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 22.0,
        ),
        SelectableText(
          '\t• Python: Python is a high-level, interpreted programming language known for its simplicity and readability. It emphasizes code readability and supports multiple programming paradigms, including procedural, object-oriented, and functional programming.\n\t• Flutter is Google\'s portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebas.\n\t• JavaScript: JavaScript is a versatile scripting language primarily used to add interactivity to webpages. It is executed on the client-side and supports event-driven programming, making it a fundamental language for web development.\n\t• Java: Java is a general-purpose, object-oriented programming language that provides a platform-independent environment. It is widely used for building enterprise-level applications, Android apps, and large-scale systems due to its robustness and scalability.\n\t• A data structure is a storage that is used to store and organize data. It is a way of arranging data on a computer so that it can be accessed and updated efficiently. Datastructure can be divided into two types.\n\t• C++: C++ is a powerful, general-purpose programming language that extends the capabilities of the C programming language. It supports both procedural and object-oriented programming paradigms and is commonly used for developing system software, game engines, and resource-intensive applications.\n\t• C#: C# (pronounced C-sharp) is a modern, object-oriented programming language developed by Microsoft. It is widely used for building Windows applications, web services, and games using the Unity game engine. C# is known for its simplicity, type safety, and integration with the .NET framework.\n\t• Swift: Swift is a programming language developed by Apple for iOS, macOS, watchOS, and tvOS app development. It is designed to be safe, fast, and expressive, with a focus on modern syntax and advanced features. Swift is known for its strong type inference and memory management capabilities.\n\t• Ruby: Ruby is a dynamic, object-oriented scripting language known for its simplicity and elegance. It prioritizes programmer productivity and readability, making it popular for web development using frameworks like Ruby on Rails.\n\t• Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google. The programming language can be used to develop web and mobile apps as well as server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax \n\t• Go: Go, also known as Golang, is a statically typed, compiled programming language developed by Google. It emphasizes simplicity, efficiency, and ease of use. Go is often used for building scalable and concurrent systems and is known for its strong support for concurrent programming.\n\t• Node. js (Node) is an open source, cross-platform runtime environment for executing JavaScript code. Node is used extensively for server-side programming.\n\t• PHP: PHP is a widely-used, server-side scripting language mainly used for web development. It is embedded within HTML code and is known for its ease of use, extensive documentation, and broad community support.\n\t• Rust: Rust is a systems programming language focused on safety, concurrency, and performance. It provides strong memory safety guarantees while allowing low-level control over hardware. Rust is often used for developing high-performance applications and system software.',
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Calibri (Body)',
            color: Colors.grey.shade700,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SelectableText(
          '©ENG-KHALIFA 2023',
          style: TextStyle(
            fontSize: 15.0,
            color: kFooterText,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
