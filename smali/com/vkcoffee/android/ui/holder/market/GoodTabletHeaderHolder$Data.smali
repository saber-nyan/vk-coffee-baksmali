.class public Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;
.super Ljava/lang/Object;
.source "GoodTabletHeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field final arrowOnClickListener:Landroid/view/View$OnClickListener;

.field final arrowSubtitle:Ljava/lang/String;

.field final extText:Ljava/lang/String;

.field final good:Lcom/vkcoffee/android/data/Good;

.field final groupName:Ljava/lang/String;

.field final groupPhoto:Ljava/lang/String;

.field final writeButtonOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 12
    .param p1, "good"    # Lcom/vkcoffee/android/data/Good;
    .param p2, "arrowSubtitle"    # Ljava/lang/String;
    .param p3, "arrowOnClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "groupPhoto"    # Ljava/lang/String;
    .param p6, "writeButtonOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->good:Lcom/vkcoffee/android/data/Good;

    .line 41
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->arrowSubtitle:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->arrowOnClickListener:Landroid/view/View$OnClickListener;

    .line 43
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->groupName:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->groupPhoto:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->writeButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f0801fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/vkcoffee/android/data/Good;->date:I

    const/4 v7, 0x1

    .line 47
    invoke-static {v6, v7}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa0

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xb7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e004a

    iget v8, p1, Lcom/vkcoffee/android/data/Good;->views_count:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p1, Lcom/vkcoffee/android/data/Good;->views_count:I

    .line 50
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aput-object v5, v3, v4

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;->extText:Ljava/lang/String;

    .line 51
    return-void
.end method
