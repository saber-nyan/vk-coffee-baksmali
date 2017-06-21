.class Lcom/vkcoffee/android/PhotoViewer$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/Photo;->albumID:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/vkcoffee/android/PhotoViewer;->access$100(Lcom/vkcoffee/android/PhotoViewer;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$200(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$300(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$400(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$1;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$500(Lcom/vkcoffee/android/PhotoViewer;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002cf
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
