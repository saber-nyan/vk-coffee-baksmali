.class public Lcom/vk/attachpicker/util/BitmapUtils$BitmapSize;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapSize"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/vk/attachpicker/util/BitmapUtils$BitmapSize;->width:I

    .line 152
    iput p2, p0, Lcom/vk/attachpicker/util/BitmapUtils$BitmapSize;->height:I

    .line 153
    return-void
.end method
