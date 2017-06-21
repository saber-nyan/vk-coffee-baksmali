.class public Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
.super Ljava/lang/Object;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceProviderObject"
.end annotation


# instance fields
.field public containerView:Landroid/view/View;

.field public imageView:Lcom/vk/attachpicker/widget/LocalImageView;

.field public index:I

.field public parentView:Landroid/view/View;

.field public thumb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
