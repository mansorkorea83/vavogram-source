.class public Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;
.super Ljava/lang/Object;
.source "ShamsiDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final SHAMSI_DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final TIME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private month:I

.field private second:I

.field private smallYear:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0*1[34]\\d\\d[/\\\\-]0*([1-9]|1[012])[/\\\\-]0*([1-9]|[12]\\d|3[01])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->SHAMSI_DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "0*(|[12])\\d:0*(|[1-5])\\d(:(0*(|[1-5])\\d)|)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setYear(I)V

    invoke-direct {p0, p2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setMonth(I)V

    invoke-direct {p0, p3}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setDay(I)V

    invoke-direct {p0, p4}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setHour(I)V

    invoke-direct {p0, p5}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setMinute(I)V

    invoke-direct {p0, p6}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setSecond(I)V

    return-void
.end method

.method private static isDateValid(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)V
    .locals 2

    invoke-static {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->dateToShamsi(Ljava/util/Date;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public static parseDate(Ljava/lang/String;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;
    .locals 3

    if-eqz p0, :cond_1

    const-string/jumbo v2, "fat"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->SHAMSI_DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    invoke-direct {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " -/\\"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setYear(I)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setMonth(I)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setDay(I)V

    invoke-static {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->isDateValid(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static parseTime(Ljava/lang/String;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;
    .locals 3

    if-eqz p0, :cond_2

    const-string/jumbo v2, "fat"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-object v2, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    invoke-direct {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " :-/"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setHour(I)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setMinute(I)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setSecond(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setDay(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Day must be between 1 and 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    return-void
.end method

.method private setHour(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Hour must be between 0 and 23"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    return-void
.end method

.method private setMinute(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minute must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    return-void
.end method

.method private setMonth(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Month must be between 1 and 12"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    return-void
.end method

.method private setSecond(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Second must be between 0 and 59"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    return-void
.end method

.method private setSmallYear(I)V
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->smallYear:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Small Year must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setYear(I)V
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    rem-int/lit8 v0, p1, 0x64

    invoke-direct {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->setSmallYear(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Year must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(II)V
    .locals 12

    const/16 v11, 0x1f

    const/16 v7, 0x1e

    const/4 v10, 0x1

    const/16 v9, 0x1d

    const/16 v8, 0xc

    const/16 v1, 0x1e

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    add-int/2addr v5, p2

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    if-gtz v5, :cond_2

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    add-int/lit8 v5, v5, 0xc

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    :cond_0
    :goto_0
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    const/4 v6, 0x7

    if-ge v5, v6, :cond_3

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    if-le v5, v11, :cond_3

    iput v11, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    if-le v5, v8, :cond_0

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    add-int/lit8 v5, v5, -0xc

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    if-ge v5, v8, :cond_4

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    if-le v5, v7, :cond_4

    iput v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    goto :goto_1

    :cond_4
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    if-ne v5, v8, :cond_1

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    if-le v5, v9, :cond_1

    new-instance v5, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    iget v6, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    iget v7, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    invoke-direct {v5, v6, v7, v9}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(III)V

    invoke-static {v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v10}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->dateToShamsi(Ljava/util/Date;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v5

    if-eq v5, v8, :cond_5

    const/16 v1, 0x1d

    :cond_5
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    if-le v5, v1, :cond_1

    iput v9, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    goto :goto_1

    :cond_6
    if-ne p1, v10, :cond_8

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    add-int/2addr v5, p2

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    if-gez v5, :cond_7

    const/4 v5, 0x0

    :goto_2
    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    goto :goto_1

    :cond_7
    iget v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->dateToShamsi(Ljava/util/Date;)Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v5

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    invoke-virtual {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v5

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    invoke-virtual {v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v5

    iput v5, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    goto/16 :goto_1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    if-eqz v0, :cond_6

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    iget v2, v0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Object must not be null and must be of type ShamsiDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    return v0
.end method

.method public getDayInYear()I
    .locals 2

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    add-int/lit8 v0, v0, -0x7

    mul-int/lit8 v0, v0, 0x1e

    iget v1, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->day:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xba

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->second:I

    return v0
.end method

.method public getSmallYear()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->smallYear:I

    return v0
.end method

.method public getWeekOfYear()I
    .locals 11

    const/4 v10, 0x7

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v8, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;

    iget v9, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    invoke-direct {v8, v9, v7, v7}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;-><init>(III)V

    invoke-static {v8}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiCalendar;->shamsiToDate(Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDayInYear()I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-eq v2, v10, :cond_0

    add-int/lit8 v2, v3, 0x1

    const/4 v8, 0x6

    invoke-virtual {v5, v8, v7}, Ljava/util/Calendar;->add(II)V

    move v4, v2

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move v3, v4

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    move v2, v7

    :goto_1
    if-gt v0, v3, :cond_2

    :goto_2
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    sub-int v3, v0, v3

    div-int/lit8 v0, v3, 0x7

    rem-int/lit8 v7, v3, 0x7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int v7, v1, v0

    add-int/2addr v2, v7

    goto :goto_2
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->year:I

    return v0
.end method

.method public toDateString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toDateString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDateString(C)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toReverseDateString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toReverseDateString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toReverseDateString(C)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toTimeString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeString(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toTimeString(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimeString(CZ)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMinute()I

    move-result v1

    if-le v1, v3, :cond_0

    const-string/jumbo v1, "fat"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getSecond()I

    move-result v1

    if-le v1, v3, :cond_2

    const-string/jumbo v1, "fat"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->getSecond()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method

.method public toTimeString(Z)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, p1}, Lorg/telegram/hoshyar/utils/shamsicalendars/ShamsiDate;->toTimeString(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
