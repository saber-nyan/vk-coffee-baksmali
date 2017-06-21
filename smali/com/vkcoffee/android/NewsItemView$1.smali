.class final Lcom/vkcoffee/android/NewsItemView$1;
.super Ljava/lang/Object;
.source "NewsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field lastClick:J

.field final synthetic val$containerID:I

.field final synthetic val$e:Lcom/vkcoffee/android/NewsEntry;

.field final synthetic val$idx:I

.field final synthetic val$item:Landroid/view/View;

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$idx:I

    iput-object p2, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$photos:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iput-object p4, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$item:Landroid/view/View;

    iput p5, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$containerID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/NewsItemView$1;->lastClick:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/NewsItemView$1;->lastClick:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/NewsItemView$1;->lastClick:J

    .line 59
    iget v0, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$idx:I

    iget-object v2, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$photos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v4, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$item:Landroid/view/View;

    iget v5, p0, Lcom/vkcoffee/android/NewsItemView$1;->val$containerID:I

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/NewsItemView;->access$000(ILandroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/View;I)V

    goto :goto_0
.end method
