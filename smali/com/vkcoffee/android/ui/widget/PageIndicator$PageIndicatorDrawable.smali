.class abstract Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PageIndicatorDrawable"
.end annotation


# instance fields
.field count:I

.field current:I

.field offset:I

.field windowSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->windowSize:I

    .line 35
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->offset:I

    .line 36
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->count:I

    .line 37
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->current:I

    return-void
.end method


# virtual methods
.method abstract setCurrentPage(IZ)V
.end method

.method abstract setPageCount(I)V
.end method
