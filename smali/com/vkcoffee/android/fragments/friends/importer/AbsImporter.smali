.class public abstract Lcom/vkcoffee/android/fragments/friends/importer/AbsImporter;
.super Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;
.source "AbsImporter.java"


# direct methods
.method protected constructor <init>(III)V
    .locals 0
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
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/friends/importer/BaseImporter;-><init>(III)V

    .line 12
    return-void
.end method
