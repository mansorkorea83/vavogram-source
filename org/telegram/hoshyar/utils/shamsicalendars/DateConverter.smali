.class public Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;
.super Ljava/lang/Object;
.source "DateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentShamsidate()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v3, "en_US"

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;

    invoke-direct {v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;-><init>()V

    new-instance v1, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;-><init>(Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->year:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v1, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->month:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v1, Lorg/telegram/hoshyar/utils/shamsicalendars/DateConverter$SolarCalendar;->date:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
