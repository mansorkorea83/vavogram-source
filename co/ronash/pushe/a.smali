.class public Lco/ronash/pushe/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v1

    const-string/jumbo v2, "t21"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Inserting boot event time in ScheduledData DB"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v1

    const-string/jumbo v2, "t19"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "Inserting screen On/Off time in ScheduledData DB"

    new-instance v2, Lco/ronash/pushe/log/d;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void

    :cond_0
    invoke-static {p0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v1

    const-string/jumbo v2, "t20"

    invoke-virtual {v1, v2, v0}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v0

    const-string/jumbo v1, "t11"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OpenApp data inserted in ScheduledData DB"

    new-instance v1, Lco/ronash/pushe/log/d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lco/ronash/pushe/log/d;-><init>([Ljava/lang/String;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->a(Ljava/lang/String;Lco/ronash/pushe/log/d;)V

    return-void
.end method
