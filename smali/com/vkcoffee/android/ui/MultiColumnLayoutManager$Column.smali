.class Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;
.super Ljava/lang/Object;
.source "MultiColumnLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MultiColumnLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Column"
.end annotation


# instance fields
.field public endIndex:I

.field public firstVisibleIndex:I

.field public firstVisibleTop:I

.field public maxBottom:I

.field public order:I

.field public startIndex:I

.field public views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "w"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->views:Ljava/util/ArrayList;

    .line 326
    iput p1, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->startIndex:I

    .line 327
    iput p2, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->endIndex:I

    .line 328
    iput p3, p0, Lcom/vkcoffee/android/ui/MultiColumnLayoutManager$Column;->width:I

    .line 329
    return-void
.end method
