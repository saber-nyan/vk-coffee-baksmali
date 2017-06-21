.class Lcom/vkcoffee/android/attachments/AlbumAttachment$2;
.super Ljava/lang/Object;
.source "AlbumAttachment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/AlbumAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/AlbumAttachment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/AlbumAttachment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/AlbumAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const v5, 0x7f100140

    const v4, 0x7f10013d

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AlbumAttachment$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
