.class Lcom/vkcoffee/android/MenuListView$1$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$1;->onPlayStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$1;

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    iput p2, p0, Lcom/vkcoffee/android/MenuListView$1$1;->val$state:I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 115
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$1(Lcom/vkcoffee/android/MenuListView;)V

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 120
    :cond_0
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v3, :cond_4

    .line 121
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 122
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    if-eqz v0, :cond_3

    .line 123
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10028b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "artist":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    iget-object v3, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v0, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    iget-object v3, v0, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$2(Lcom/vkcoffee/android/MenuListView;)V

    .line 133
    .end local v1    # "artist":Landroid/widget/TextView;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100289

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v4, p0, Lcom/vkcoffee/android/MenuListView$1$1;->val$state:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_5

    const v4, 0x7f020192

    :goto_0
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$1$1;->this$1:Lcom/vkcoffee/android/MenuListView$1;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView$1;->access$0(Lcom/vkcoffee/android/MenuListView$1;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/MenuListView;->postInvalidate()V

    .line 136
    .end local v0    # "af":Lcom/vkcoffee/android/AudioFile;
    :cond_4
    return-void

    .line 133
    .restart local v0    # "af":Lcom/vkcoffee/android/AudioFile;
    :cond_5
    const v4, 0x7f020194

    goto :goto_0
.end method
