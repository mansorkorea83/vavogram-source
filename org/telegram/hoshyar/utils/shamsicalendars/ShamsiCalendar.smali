.class public Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;
.super Ljava/lang/Object;
.source "ShamsiCalendar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf"
    }
.end annotation


# static fields
.field public static final CURRENT_CENTURY:I = 0xd

.field private static final shamsiMonths:[Ljava/lang/String;

.field private static final shamsiMonthsEn:[Ljava/lang/String;

.field private static final shamsiWeekDays:[Ljava/lang/String;

.field private static final shamsiWeekDaysMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u0634\u0646\u0628\u0647"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\u06cc\u06a9\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u062f\u0648\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u0633\u0647 \u0634\u0646\u0628\u0647"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0686\u0647\u0627\u0631\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u067e\u0646\u062c \u0634\u0646\u0628\u0647"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "\u062c\u0645\u0639\u0647"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u0641\u0631\u0648\u0631\u062f\u06cc\u0646"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\u0627\u0631\u062f\u06cc\u0628\u0647\u0634\u062a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u062e\u0631\u062f\u0627\u062f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u062a\u06cc\u0631"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0645\u0631\u062f\u0627\u062f"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u0634\u0647\u0631\u06cc\u0648\u0631"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0645\u0647\u0631"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0622\u0628\u0627\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0622\u0630\u0631"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u062f\u06cc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0628\u0647\u0645\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u0627\u0633\u0641\u0646\u062f"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiMonths:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Farvardin"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Ordibehesht"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Khordad"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Tir"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Mordad"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Shahrivar"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "Mehr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Aban"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Azar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Dey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Bahman"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Esfand"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiMonthsEn:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToShamsi(Ljava/util/Date;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;
    .locals 24

    new-instance v13, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;

    invoke-direct {v13}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getDay()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v2, v0, v1}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->GregorianToPersian(III)V

    invoke-virtual {v13}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->getMonth()I

    move-result v4

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    :goto_0
    int-to-long v0, v2

    move-wide/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    add-long v20, v20, v22

    new-instance v2, Ljava/util/Date;

    const-string/jumbo v19, "01/01/1900"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v10, v20, v22

    const-wide/16 v20, 0x3e8

    div-long v14, v10, v20

    const-wide/16 v20, 0x3c

    rem-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v8, v0

    const-wide/16 v20, 0x3c

    div-long v14, v14, v20

    const-wide/16 v20, 0x3c

    rem-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    const-wide/16 v20, 0x3c

    div-long v20, v14, v20

    const-wide/16 v22, 0x18

    rem-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v6, v0

    const-wide/32 v20, 0x5265c00

    div-long v16, v10, v20

    const-wide/16 v20, 0x4e

    cmp-long v2, v16, v20

    if-gtz v2, :cond_1

    const-wide/16 v20, 0xa

    add-long v20, v20, v16

    const-wide/16 v22, 0x1e

    div-long v20, v20, v22

    const-wide/16 v22, 0xa

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v9, v2

    const-wide/16 v20, 0xa

    add-long v20, v20, v16

    const-wide/16 v22, 0x1e

    rem-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v5, v2

    const/16 v3, 0x4fe

    :goto_1
    new-instance v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    invoke-direct/range {v2 .. v8}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(IIIIII)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v20, 0x4e

    sub-long v14, v16, v20

    const/16 v12, 0x4ff

    :goto_2
    add-int/lit8 v2, v12, 0xb

    int-to-long v0, v2

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x21

    rem-long v16, v20, v22

    const-wide/16 v20, 0x20

    cmp-long v2, v16, v20

    if-eqz v2, :cond_2

    const-wide/16 v20, 0x4

    rem-long v20, v16, v20

    const-wide/16 v22, 0x0

    cmp-long v2, v20, v22

    if-eqz v2, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    add-int/lit16 v2, v3, 0x16d

    int-to-long v0, v2

    move-wide/from16 v20, v0

    cmp-long v2, v14, v20

    if-gtz v2, :cond_4

    const-wide/16 v20, 0xba

    cmp-long v2, v14, v20

    if-gtz v2, :cond_5

    const-wide/16 v20, 0x1

    sub-long v20, v14, v20

    const-wide/16 v22, 0x1f

    rem-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v5, v2

    const-wide/16 v20, 0x1

    sub-long v20, v14, v20

    const-wide/16 v22, 0x1f

    div-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v0, v2

    move/from16 v18, v0

    move v3, v12

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit16 v2, v3, 0x16d

    int-to-long v0, v2

    move-wide/from16 v20, v0

    sub-long v14, v14, v20

    add-int/lit8 v2, v12, 0x1

    int-to-short v12, v2

    goto :goto_2

    :cond_5
    const-wide/16 v20, 0x1

    sub-long v20, v14, v20

    const-wide/16 v22, 0xba

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1e

    rem-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v5, v2

    const-wide/16 v20, 0x1

    sub-long v20, v14, v20

    const-wide/16 v22, 0xba

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1e

    div-long v20, v20, v22

    const-wide/16 v22, 0x7

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    int-to-short v0, v2

    move/from16 v18, v0

    move v3, v12

    goto/16 :goto_1
.end method

.method public static getDaysInMonth(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)I
    .locals 8

    const/16 v3, 0x1e

    const/16 v2, 0x1d

    const/16 v7, 0xc

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    const/16 v3, 0x1f

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v4

    if-lt v4, v7, :cond_0

    new-instance v4, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v6

    invoke-direct {v4, v5, v6, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(III)V

    invoke-static {v4}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->dateToShamsi(Ljava/util/Date;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v4

    if-eq v4, v7, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static getShamsiMonth(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiMonths:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShamsiMonthEn(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiMonthsEn:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShamsiMonths()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiMonths:[Ljava/lang/String;

    return-object v0
.end method

.method public static getShamsiWeekDay(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getShamsiWeekDays()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDays:[Ljava/lang/String;

    return-object v0
.end method

.method public static getShamsiWeekDaysMap()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiWeekDaysMap:Ljava/util/Map;

    return-object v0
.end method

.method public static shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;
    .locals 14

    const/4 v12, 0x1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x7

    mul-int/lit8 v8, v8, 0x1e

    add-int/lit16 v8, v8, 0xba

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v9

    add-int v6, v8, v9

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v8

    const/16 v9, 0x4fe

    if-ne v8, v9, :cond_2

    add-int/lit16 v8, v6, -0x11f

    int-to-long v2, v8

    :goto_1
    const/16 v1, 0x4ff

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v8

    if-ge v1, v8, :cond_5

    add-int/lit8 v8, v1, 0xb

    int-to-long v8, v8

    const-wide/16 v10, 0x21

    rem-long v4, v8, v10

    const-wide/16 v8, 0x20

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x4

    rem-long v8, v4, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    :cond_0
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_4

    const-wide/16 v8, 0x16e

    add-long/2addr v2, v8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x1f

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v9

    add-int v6, v8, v9

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x4f

    goto :goto_1

    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_3

    :cond_4
    const-wide/16 v8, 0x16d

    add-long/2addr v2, v8

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/Date;

    new-instance v8, Ljava/util/Date;

    const-string/jumbo v9, "01/01/1900"

    invoke-direct {v8, v9}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    int-to-long v10, v6

    add-long/2addr v10, v2

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    mul-long/2addr v10, v12

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getHour()I

    move-result v12

    mul-int/lit16 v12, v12, 0xe10

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMinute()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getSecond()I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v9

    int-to-long v12, v9

    sub-long/2addr v10, v12

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    move-object v0, v8

    :cond_6
    return-object v0
.end method
