.class public Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;
.super Ljava/lang/Object;
.source "Roozh.java"


# instance fields
.field private day:I

.field private gD:I

.field private gM:I

.field private gY:I

.field private jD:I

.field private jM:I

.field private jY:I

.field private leap:I

.field private march:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private JD2JG(II)V
    .locals 4

    mul-int/lit8 v2, p1, 0x4

    const v3, 0x84e7d5f

    add-int v1, v2, v3

    if-nez p2, :cond_0

    mul-int/lit8 v2, p1, 0x4

    const v3, 0xaeb3908

    add-int/2addr v2, v3

    const v3, 0x23ab1

    div-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    add-int/lit16 v1, v2, -0xf44

    :cond_0
    rem-int/lit16 v2, v1, 0x5b5

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x5

    add-int/lit16 v0, v2, 0x134

    rem-int/lit16 v2, v0, 0x99

    div-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gD:I

    div-int/lit16 v2, v0, 0x99

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gM:I

    div-int/lit16 v2, v1, 0x5b5

    const v3, 0x18704

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gM:I

    rsub-int/lit8 v3, v3, 0x8

    div-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    return-void
.end method

.method private JD2Jal(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JD2JG(II)V

    iget v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    add-int/lit16 v2, v2, -0x26d

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jY:I

    iget v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jY:I

    invoke-direct {p0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JalCal(I)V

    iget v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    const/4 v3, 0x3

    iget v4, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->march:I

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JG2JD(IIII)I

    move-result v0

    sub-int v1, p1, v0

    if-ltz v1, :cond_2

    const/16 v2, 0xb9

    if-gt v1, v2, :cond_0

    div-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jM:I

    rem-int/lit8 v2, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jD:I

    :goto_0
    return-void

    :cond_0
    add-int/lit16 v1, v1, -0xba

    :cond_1
    :goto_1
    div-int/lit8 v2, v1, 0x1e

    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jM:I

    rem-int/lit8 v2, v1, 0x1e

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jD:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jY:I

    add-int/lit16 v1, v1, 0xb3

    iget v2, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->leap:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private JG2JD(IIII)I
    .locals 4

    add-int/lit16 v1, p1, 0x12c0

    add-int/lit8 v2, p2, -0xe

    div-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x5b5

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, -0x2

    add-int/lit8 v3, p2, -0xe

    div-int/lit8 v3, v3, 0xc

    mul-int/lit8 v3, v3, 0xc

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x16f

    div-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    add-int/lit16 v2, p1, 0x1324

    add-int/lit8 v3, p2, -0xe

    div-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    add-int/lit16 v0, v1, -0x7d4b

    if-nez p4, :cond_0

    const v1, 0x18704

    add-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x8

    div-int/lit8 v2, v2, 0x6

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int v1, v0, v1

    add-int/lit16 v0, v1, 0x2f0

    :cond_0
    return v0
.end method

.method private Jal2JD(III)I
    .locals 5

    invoke-direct {p0, p1}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JalCal(I)V

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    const/4 v2, 0x3

    iget v3, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->march:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JG2JD(IIII)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x7

    add-int/lit8 v3, p2, -0x7

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    add-int/lit8 v0, v1, -0x1

    return v0
.end method

.method private JalCal(I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->march:I

    iput v9, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->leap:I

    const/16 v8, 0x14

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    add-int/lit16 v8, p1, 0x26d

    iput v8, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    const/16 v7, -0xe

    aget v4, v1, v9

    const/4 v5, 0x0

    const/4 v2, 0x1

    :goto_0
    const/16 v8, 0x13

    if-gt v2, v8, :cond_2

    aget v3, v1, v2

    sub-int v5, v3, v4

    if-ge p1, v3, :cond_3

    sub-int v0, p1, v4

    div-int/lit8 v8, v0, 0x21

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    rem-int/lit8 v9, v0, 0x21

    add-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    add-int v7, v8, v9

    rem-int/lit8 v8, v5, 0x21

    if-ne v8, v10, :cond_0

    sub-int v8, v5, v0

    if-ne v8, v10, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    iget v8, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    div-int/lit8 v8, v8, 0x4

    iget v9, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    div-int/lit8 v9, v9, 0x64

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    add-int/lit16 v6, v8, -0x96

    add-int/lit8 v8, v7, 0x14

    sub-int/2addr v8, v6

    iput v8, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->march:I

    sub-int v8, v5, v0

    const/4 v9, 0x6

    if-ge v8, v9, :cond_1

    sub-int v8, v0, v5

    add-int/lit8 v9, v5, 0x4

    div-int/lit8 v9, v9, 0x21

    mul-int/lit8 v9, v9, 0x21

    add-int v0, v8, v9

    :cond_1
    add-int/lit8 v8, v0, 0x1

    rem-int/lit8 v8, v8, 0x21

    add-int/lit8 v8, v8, -0x1

    rem-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->leap:I

    iget v8, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->leap:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    iput v10, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->leap:I

    :cond_2
    return-void

    :cond_3
    div-int/lit8 v8, v5, 0x21

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    rem-int/lit8 v9, v5, 0x21

    div-int/lit8 v9, v9, 0x4

    add-int v7, v8, v9

    move v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :array_0
    .array-data 0x4
        0xc3t 0xfft 0xfft 0xfft
        0x9t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0xaat 0x1t 0x0t 0x0t
        0xaet 0x2t 0x0t 0x0t
        0xf4t 0x2t 0x0t 0x0t
        0x32t 0x3t 0x0t 0x0t
        0x57t 0x4t 0x0t 0x0t
        0x9dt 0x4t 0x0t 0x0t
        0xbat 0x4t 0x0t 0x0t
        0x63t 0x6t 0x0t 0x0t
        0xct 0x8t 0x0t 0x0t
        0x31t 0x8t 0x0t 0x0t
        0x90t 0x8t 0x0t 0x0t
        0xd6t 0x8t 0x0t 0x0t
        0x14t 0x9t 0x0t 0x0t
        0x5at 0x9t 0x0t 0x0t
        0x98t 0x9t 0x0t 0x0t
        0x6at 0xct 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public GregorianToPersian(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JG2JD(IIII)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JD2Jal(I)V

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jY:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->year:I

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jM:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->month:I

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->jD:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->day:I

    return-void
.end method

.method public PersianToGregorian(III)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->Jal2JD(III)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->JD2JG(II)V

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gY:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->year:I

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gM:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->month:I

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->gD:I

    iput v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->day:I

    return-void
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->year:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%04d-%02d-%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->getMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/Roozh;->getDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
