.class public Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public breakAfter:Z

.field public center:Z

.field public floating:Z

.field public height:I

.field public horizontal_spacing:I

.field public vertical_spacing:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "horizontal_spacing"    # I
    .param p2, "vertical_spacing"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    iput p1, p0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    .line 41
    iput p2, p0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 42
    return-void
.end method
