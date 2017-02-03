.class public Lorg/telegram/khalkhaloka/Theme_sel;
.super Landroid/app/Activity;
.source "Theme_sel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lorg/telegram/khalkhaloka/Theme_sel;->setContentView(I)V

    return-void
.end method
