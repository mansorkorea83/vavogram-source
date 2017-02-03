.class public Lorg/telegram/hoshyar/Helper/SolarCalendar;
.super Ljava/lang/Object;
.source "SolarCalendar.java"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private date:I

.field private month:I

.field private weekDay:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calSolarCalendar()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calSolarCalendar()V

    return-void
.end method

.method public static Convert(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Lorg/telegram/hoshyar/Helper/SolarCalendar;

    invoke-direct {v1, v0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getDescribedDateFormat()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calSolarCalendar()V
    .locals 13

    const/16 v12, 0xba

    const/16 v11, 0x1f

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/16 v8, 0x1e

    iget-object v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    iget-object v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->weekDay:I

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    new-array v1, v10, [I

    fill-array-data v1, :array_1

    rem-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_3

    add-int/lit8 v6, v3, -0x1

    aget v6, v0, v6

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    const/16 v7, 0x4f

    if-le v6, v7, :cond_1

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    add-int/lit8 v6, v6, -0x4f

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    if-gt v6, v12, :cond_0

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    packed-switch v6, :pswitch_data_0

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_0
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    :goto_1
    return-void

    :pswitch_0
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v11, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_0

    :cond_0
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    add-int/lit16 v6, v6, -0xba

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_1

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x7

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_2
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x6

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v8, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_2

    :cond_1
    const/16 v6, 0x7cc

    if-le v4, v6, :cond_2

    rem-int/lit8 v6, v4, 0x4

    if-ne v6, v9, :cond_2

    const/16 v5, 0xb

    :goto_3
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_2

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_4
    add-int/lit16 v6, v4, -0x26e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    goto :goto_3

    :pswitch_2
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v8, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v3, -0x1

    aget v6, v1, v6

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    const/16 v6, 0x7cc

    if-lt v4, v6, :cond_4

    const/16 v5, 0x4f

    :goto_5
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    if-le v6, v5, :cond_6

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    if-gt v6, v12, :cond_5

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    packed-switch v6, :pswitch_data_3

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_6
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x50

    goto :goto_5

    :pswitch_3
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v11, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_6

    :cond_5
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    add-int/lit16 v6, v6, -0xba

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_4

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x7

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_7
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    goto/16 :goto_1

    :pswitch_4
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x6

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v8, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_7

    :cond_6
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_5

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    :goto_8
    add-int/lit16 v6, v4, -0x26e

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    goto/16 :goto_1

    :pswitch_5
    iget v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    iput v8, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    goto :goto_8

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getDescribedDateFormat()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getWeekDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u0647.\u0634 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u0633\u0627\u0639\u062a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMonth()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget v1, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u062a\u064a\u0631"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u0645\u0631\u062f\u0627\u062f"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u0634\u0647\u0631\u064a\u0648\u0631"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u0645\u0647\u0631"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "\u0622\u0628\u0627\u0646"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u0622\u0630\u0631"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u062f\u064a"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u0628\u0647\u0645\u0646"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u0627\u0633\u0641\u0646\u062f"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getNumericDateFormat()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->month:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->date:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTime()Ljava/lang/String;
    .locals 8

    const/16 v7, 0xa

    iget-object v4, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v1, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekDay()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget v1, p0, Lorg/telegram/hoshyar/Helper/SolarCalendar;->weekDay:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u064a\u06a9\u0634\u0646\u0628\u0647"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u062f\u0648\u0634\u0646\u0628\u0647"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u0633\u0647 \u0634\u0646\u0628\u0647"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u0686\u0647\u0627\u0631\u0634\u0646\u0628\u0647"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u067e\u0646\u062c \u0634\u0646\u0628\u0647"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u062c\u0645\u0639\u0647"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u0634\u0646\u0628\u0647"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Helper/SolarCalendar;->getDescribedDateFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
