import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_library/quran_library.dart';

import '../../../core/theme/theme.dart';

class QuranHomeScreen extends StatefulWidget {
  const QuranHomeScreen({super.key});

  @override
  State<QuranHomeScreen> createState() => _QuranHomeScreenState();
}

class _QuranHomeScreenState extends State<QuranHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDark;
    final size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: QuranLibraryScreen(
        parentContext: context,
        withPageView: true,
        useDefaultAppBar: true,
        isShowAudioSlider: true,
        showAyahBookmarkedIcon: true,
        isDark: isDark,
        appLanguageCode: 'ar',
        backgroundColor: isDark ? AppColors.darkBg : AppColors.cream,
        textColor: isDark ? AppColors.creamLight : AppColors.textDark,

        // ── Highlighted ayah background ──────────────────────
        ayahSelectedBackgroundColor:
            AppColors.gold.withValues(alpha: isDark ? 0.18 : 0.22),
        ayahIconColor: AppColors.gold,

        // ── Basmala style ────────────────────────────────────
        basmalaStyle: BasmalaStyle(
          verticalPadding: 0.0,
          basmalaColor:
              isDark ? AppColors.goldLight : AppColors.primaryGreen,
          basmalaFontSize: 42.0,
        ),

        // ── Top AppBar ────────────────────────────────────────
        topBarStyle: QuranTopBarStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          showAudioButton: true,
          showFontsButton: true,
          backgroundColor:
              isDark ? AppColors.darkSurface : AppColors.primaryGreen,
          textColor: isDark ? AppColors.goldLight : AppColors.goldShimmer,
          accentColor: AppColors.gold,
          iconColor: isDark ? AppColors.goldLight : AppColors.goldShimmer,
          tabIndexLabel: 'الفهرس',
          tabBookmarksLabel: 'العلامات',
          tabSearchLabel: 'البحث',
        ),

        // ── Index / Surah List ────────────────────────────────
        indexTabStyle: IndexTabStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          tabSurahsLabel: 'السور',
          tabJozzLabel: 'الأجزاء',
        ),

        // ── Search ────────────────────────────────────────────
        searchTabStyle: SearchTabStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          searchHintText: 'ابحث في القرآن الكريم...',
        ),

        // ── Bookmarks ─────────────────────────────────────────
        bookmarksTabStyle: BookmarksTabStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          emptyStateText: 'لا توجد علامات مرجعية بعد',
          greenGroupText: 'علامات خضراء',
          yellowGroupText: 'علامات صفراء',
          redGroupText: 'علامات حمراء',
        ),

        // ── Ayah menu (context menu on tap) ──────────────────
        ayahMenuStyle: AyahMenuStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          copySuccessMessage: 'تم نسخ الآية',
          showPlayAllButton: true,
        ),

        // ── Tafsir bottom sheet ───────────────────────────────
        tafsirStyle: TafsirStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          widthOfBottomSheet: size.width,
          heightOfBottomSheet: size.height * 0.75,
          changeTafsirDialogHeight: size.height * 0.8,
          changeTafsirDialogWidth: size.width,
          tafsirName: 'التفسير',
          translateName: 'الترجمة',
          tafsirIsEmptyNote: 'لا يتوفر تفسير لهذه الآية',
          footnotesName: 'الحواشي',
        ),

        // ── Surah Info ────────────────────────────────────────
        surahInfoStyle: SurahInfoStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          ayahCount: 'آية',
          firstTabText: 'أسماء السورة',
          secondTabText: 'عن السورة',
          bottomSheetWidth: size.width,
        ),

        // ── Top/Bottom page labels (Juz, Hizb) ───────────────
        topBottomQuranStyle: TopBottomQuranStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          hizbName: 'حزب',
          juzName: 'جزء',
          sajdaName: 'سجدة',
        ),

        // ── Audio style ───────────────────────────────────────
        ayahStyle: AyahAudioStyle.defaults(
          isDark: isDark,
          context: context,
        ).copyWith(
          dialogWidth: size.width * 0.9,
          readersTabText: 'القراء',
        ),
      ),
    );
  }
}
