.class Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.source "DrawableWrapperHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateHoneycomb"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
