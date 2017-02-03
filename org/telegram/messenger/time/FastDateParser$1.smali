.class final Lorg/telegram/messenger/time/FastDateParser$1;
.super Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    #calls: Lorg/telegram/messenger/time/FastDateParser;->adjustYear(I)I
    invoke-static {p1, v0}, Lorg/telegram/messenger/time/FastDateParser;->access$300(Lorg/telegram/messenger/time/FastDateParser;I)I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
