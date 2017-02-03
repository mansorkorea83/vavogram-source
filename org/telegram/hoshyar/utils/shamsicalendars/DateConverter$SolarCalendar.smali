.class Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;
.super Ljava/lang/Object;
.source "DateConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SolarCalendar"
.end annotation


# instance fields
.field date:I

.field month:I

.field public strMonth:Ljava/lang/String;

.field public strWeekDay:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;

.field year:I


# direct methods
.method public constructor <init>(Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->this$0:Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->calcSolarCalendar(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;Ljava/util/Date;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->this$0:Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->calcSolarCalendar(Ljava/util/Date;)V

    return-void
.end method

.method private calcSolarCalendar(Ljava/util/Date;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x1f

    const/16 v10, 0x1e

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v6, v7, 0x76c

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/Date;->getDay()I

    move-result v0

    const/16 v7, 0xc

    new-array v1, v7, [I

    const/16 v7, 0xc

    new-array v2, v7, [I

    aput v9, v1, v9

    aput v11, v1, v12

    const/16 v7, 0x3b

    aput v7, v1, v13

    const/4 v7, 0x3

    const/16 v8, 0x5a

    aput v8, v1, v7

    const/4 v7, 0x4

    const/16 v8, 0x78

    aput v8, v1, v7

    const/4 v7, 0x5

    const/16 v8, 0x97

    aput v8, v1, v7

    const/4 v7, 0x6

    const/16 v8, 0xb5

    aput v8, v1, v7

    const/4 v7, 0x7

    const/16 v8, 0xd4

    aput v8, v1, v7

    const/16 v7, 0x8

    const/16 v8, 0xf3

    aput v8, v1, v7

    const/16 v7, 0x9

    const/16 v8, 0x111

    aput v8, v1, v7

    const/16 v7, 0xa

    const/16 v8, 0x130

    aput v8, v1, v7

    const/16 v7, 0xb

    const/16 v8, 0x14e

    aput v8, v1, v7

    aput v9, v2, v9

    aput v11, v2, v12

    const/16 v7, 0x3c

    aput v7, v2, v13

    const/4 v7, 0x3

    const/16 v8, 0x5b

    aput v8, v2, v7

    const/4 v7, 0x4

    const/16 v8, 0x79

    aput v8, v2, v7

    const/4 v7, 0x5

    const/16 v8, 0x98

    aput v8, v2, v7

    const/4 v7, 0x6

    const/16 v8, 0xb6

    aput v8, v2, v7

    const/4 v7, 0x7

    const/16 v8, 0xd5

    aput v8, v2, v7

    const/16 v7, 0x8

    const/16 v8, 0xf4

    aput v8, v2, v7

    const/16 v7, 0x9

    const/16 v8, 0x112

    aput v8, v2, v7

    const/16 v7, 0xa

    const/16 v8, 0x131

    aput v8, v2, v7

    const/16 v7, 0xb

    const/16 v8, 0x14f

    aput v8, v2, v7

    rem-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_3

    add-int/lit8 v7, v5, -0x1

    aget v7, v1, v7

    add-int/2addr v7, v4

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    const/16 v8, 0x4f

    if-le v7, v8, :cond_1

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    add-int/lit8 v7, v7, -0x4f

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    const/16 v8, 0xba

    if-gt v7, v8, :cond_0

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1f

    packed-switch v7, :pswitch_data_0

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1f

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_0
    add-int/lit16 v7, v6, -0x26d

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    :goto_1
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    packed-switch v7, :pswitch_data_1

    :goto_2
    packed-switch v0, :pswitch_data_2

    :goto_3
    return-void

    :pswitch_0
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1f

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v11, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_0

    :cond_0
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    add-int/lit16 v7, v7, -0xba

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    packed-switch v7, :pswitch_data_3

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x7

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_4
    add-int/lit16 v7, v6, -0x26d

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    goto :goto_1

    :pswitch_1
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x6

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v10, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_4

    :cond_1
    const/16 v7, 0x7cc

    if-le v6, v7, :cond_2

    rem-int/lit8 v7, v6, 0x4

    if-ne v7, v12, :cond_2

    const/16 v3, 0xb

    :goto_5
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    add-int/2addr v7, v3

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    packed-switch v7, :pswitch_data_4

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0xa

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_6
    add-int/lit16 v7, v6, -0x26e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    goto :goto_5

    :pswitch_2
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x9

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v10, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_6

    :cond_3
    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    add-int/2addr v7, v4

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    const/16 v7, 0x7cc

    if-lt v6, v7, :cond_4

    const/16 v3, 0x4f

    :goto_7
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    if-le v7, v3, :cond_6

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    sub-int/2addr v7, v3

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    const/16 v8, 0xba

    if-gt v7, v8, :cond_5

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1f

    packed-switch v7, :pswitch_data_5

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1f

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_8
    add-int/lit16 v7, v6, -0x26d

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x50

    goto :goto_7

    :pswitch_3
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1f

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v11, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_8

    :cond_5
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    add-int/lit16 v7, v7, -0xba

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    packed-switch v7, :pswitch_data_6

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x7

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_9
    add-int/lit16 v7, v6, -0x26d

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    goto/16 :goto_1

    :pswitch_4
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x6

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v10, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_9

    :cond_6
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    add-int/lit8 v7, v7, 0xa

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    packed-switch v7, :pswitch_data_7

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0xa

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    rem-int/lit8 v7, v7, 0x1e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    :goto_a
    add-int/lit16 v7, v6, -0x26e

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    goto/16 :goto_1

    :pswitch_5
    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    div-int/lit8 v7, v7, 0x1e

    add-int/lit8 v7, v7, 0x9

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    iput v10, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    goto :goto_a

    :pswitch_6
    const-string/jumbo v7, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_7
    const-string/jumbo v7, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_8
    const-string/jumbo v7, "\u062e\u0631\u062f\u0627\u062f"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_9
    const-string/jumbo v7, "\u062a\u064a\u0631"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_a
    const-string/jumbo v7, "\u0645\u0631\u062f\u0627\u062f"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_b
    const-string/jumbo v7, "\u0634\u0647\u0631\u064a\u0648\u0631"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_c
    const-string/jumbo v7, "\u0645\u0647\u0631"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_d
    const-string/jumbo v7, "\u0622\u0628\u0627\u0646"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_e
    const-string/jumbo v7, "\u0622\u0630\u0631"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_f
    const-string/jumbo v7, "\u062f\u064a"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_10
    const-string/jumbo v7, "\u0628\u0647\u0645\u0646"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_11
    const-string/jumbo v7, "\u0627\u0633\u0641\u0646\u062f"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strMonth:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_12
    const-string/jumbo v7, "\u064a\u06a9\u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_13
    const-string/jumbo v7, "\u062f\u0648\u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_14
    const-string/jumbo v7, "\u0633\u0647 \u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_15
    const-string/jumbo v7, "\u0686\u0647\u0627\u0631\u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_16
    const-string/jumbo v7, "\u067e\u0646\u062c \u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_17
    const-string/jumbo v7, "\u062c\u0645\u0639\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_18
    const-string/jumbo v7, "\u0634\u0646\u0628\u0647"

    iput-object v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->strWeekDay:Ljava/lang/String;

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
