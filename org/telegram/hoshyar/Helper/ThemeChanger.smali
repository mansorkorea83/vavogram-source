.class public Lorg/telegram/hoshyar/Helper/ThemeChanger;
.super Ljava/lang/Object;
.source "ThemeChanger.java"


# static fields
.field private static TabHost:Landroid/view/View;

.field private static currenttheme:Lorg/telegram/hoshyar/Models/Theme;

.field private static floatingbutton:Landroid/widget/ImageView;

.field private static themes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/hoshyar/Models/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private static views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeTheme(Lorg/telegram/hoshyar/Models/Theme;)V
    .locals 3

    invoke-static {p0}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->setcurrent(Lorg/telegram/hoshyar/Models/Theme;)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->ChangeColor()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Models/Theme;->getActionbarcolor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->TabHost:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Models/Theme;->getTabLayoutColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v1, Lorg/telegram/hoshyar/Helper/ThemeChanger;->floatingbutton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Models/Theme;->getFloatingbuttondrawble()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public static EditActionbar(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->getcurrent()Lorg/telegram/hoshyar/Models/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/hoshyar/Models/Theme;->getActionbarcolor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static LoadThemes()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/hoshyar/Models/Theme;",
            ">;"
        }
    .end annotation

    const v10, 0x7f02010d

    const v3, -0xd7ca6d

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x0

    const-string/jumbo v2, "Blue"

    const v5, 0x7f02011d

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x1

    const-string/jumbo v2, "HotBlue"

    const-string/jumbo v3, "#0C867B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#0C867B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02011b

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x2

    const-string/jumbo v2, "cyan"

    const-string/jumbo v3, "#39adea"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#39adea"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02011a

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x3

    const-string/jumbo v2, "Hotgreen"

    const-string/jumbo v3, "#0C867B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#0C867B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020119

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x4

    const-string/jumbo v2, "green"

    const-string/jumbo v3, "#9CCC65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#9CCC65"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020118

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x5

    const-string/jumbo v2, "lightgreen"

    const-string/jumbo v3, "#8BC34A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#8BC34A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020117

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x6

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#10AA9C"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#10AA9C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020116

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/4 v1, 0x7

    const-string/jumbo v2, "lemun"

    const-string/jumbo v3, "#FFF568"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#FFF568"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020115

    const-string/jumbo v6, "grey"

    const-string/jumbo v7, "blue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x8

    const-string/jumbo v2, "ping"

    const-string/jumbo v3, "#EC407A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#EC407A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x9

    const-string/jumbo v2, "Red"

    const-string/jumbo v3, "#F44336"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#F44336"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020114

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xa

    const-string/jumbo v2, "LightRed"

    const-string/jumbo v3, "#E57373"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#E57373"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020113

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xb

    const-string/jumbo v2, "purple"

    const-string/jumbo v3, "#AB47BC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#AB47BC"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020112

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xc

    const-string/jumbo v2, "Brown"

    const-string/jumbo v3, "#795548"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#795548"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020111

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xd

    const-string/jumbo v2, "Dark"

    const-string/jumbo v3, "#3C3F41"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#3C3F41"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f020110

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xe

    const-string/jumbo v2, "black"

    const-string/jumbo v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02010f

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0xf

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#005926"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#005926"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02010e

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x10

    const-string/jumbo v2, "pinkred"

    const-string/jumbo v3, "#ED145B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#ED145B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    move v5, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x11

    const-string/jumbo v2, "orangered"

    const-string/jumbo v3, "#F8941D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#F8941D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02010c

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x12

    const-string/jumbo v2, "bluegreen"

    const-string/jumbo v3, "#00BCD4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#00BCD4"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02010b

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/hoshyar/Models/Theme;

    const/16 v1, 0x13

    const-string/jumbo v2, "hotbluegreen"

    const-string/jumbo v3, "#de0034"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "#de0034"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const v5, 0x7f02010a

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "selected"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/hoshyar/Models/Theme;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static addView(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getcurrent()Lorg/telegram/hoshyar/Models/Theme;
    .locals 2

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->currenttheme:Lorg/telegram/hoshyar/Models/Theme;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/hoshyar/Helper/ThemeChanger;->LoadThemes()Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->themes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getTheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/hoshyar/Models/Theme;

    sput-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->currenttheme:Lorg/telegram/hoshyar/Models/Theme;

    :cond_1
    sget-object v0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->currenttheme:Lorg/telegram/hoshyar/Models/Theme;

    return-object v0
.end method

.method public static setFloatingbutton(Landroid/widget/ImageView;)V
    .locals 0

    sput-object p0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->floatingbutton:Landroid/widget/ImageView;

    return-void
.end method

.method public static setcurrent(Lorg/telegram/hoshyar/Models/Theme;)V
    .locals 1

    sput-object p0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->currenttheme:Lorg/telegram/hoshyar/Models/Theme;

    invoke-virtual {p0}, Lorg/telegram/hoshyar/Models/Theme;->getId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/hoshyar/Setting/Setting;->setTheme(I)V

    return-void
.end method

.method public static settabhost(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    sput-object p0, Lorg/telegram/hoshyar/Helper/ThemeChanger;->TabHost:Landroid/view/View;

    return-void
.end method
