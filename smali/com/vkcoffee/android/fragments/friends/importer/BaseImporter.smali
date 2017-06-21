.class public abstract Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
.super Ljava/lang/Object;
.source "BaseImporter.java"


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(III)V
    .locals 1
    .param p1, "icon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "subtitle"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mTitle:Ljava/lang/CharSequence;

    .line 21
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mSubtitle:Ljava/lang/CharSequence;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method
