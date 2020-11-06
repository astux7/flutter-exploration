// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_hub/main.dart';
import 'package:image_test_utils/image_test_utils.dart';

void main() {
  group('Hubs', () {
    testWidgets('Hubs home smoke test', (WidgetTester tester) async {
      provideMockedNetworkImages(() async {
        // build hubs
        await tester.pumpWidget(Hubs());
        await tester.pump();
        // verify

        expect(find.text('Message Center'), findsOneWidget);
        expect(find.text('Sky Cinema'), findsNothing);
      });
    });

    testWidgets('Hubs tv smoke test', (WidgetTester tester) async {
      provideMockedNetworkImages(() async {
        // build tv
        await tester.pumpWidget(Hubs());
        await tester.tap(find.byIcon(Icons.tv));
        await tester.pump();
        // verify
        expect(find.text('Message Center'), findsNothing);
        expect(find.text('Sky Cinema'), findsOneWidget);
      });
    });

    testWidgets('Hubs vip smoke test', (WidgetTester tester) async {
      provideMockedNetworkImages(() async {
        // build vip
        await tester.pumpWidget(Hubs());
        await tester.tap(find.byIcon(Icons.face_unlock_sharp));
        await tester.pump();
        // Verify
        expect(find.text('Sky Cinema'), findsNothing);
        expect(find.text('Message Center'), findsNothing);
      });
    });
  });
}
