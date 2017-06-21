.class Lcom/vk/attachpicker/screen/EditorScreen$8$1;
.super Lcom/vk/attachpicker/util/AsyncTask;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen$8;->loadAndShow(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

.field final synthetic val$dialog:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$dialogShow:Ljava/lang/Runnable;

.field final synthetic val$emoji:Z

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$metaInfo:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen$8;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/screen/EditorScreen$8;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$dialogShow:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$dialog:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p5, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$emoji:Z

    iput-object p6, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$metaInfo:Ljava/lang/String;

    iput-object p7, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vk/attachpicker/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 904
    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->get()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 906
    :goto_0
    return-object v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 869
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 877
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$dialogShow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 878
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$dialog:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/LoadingDialog;->dismissLoadingDialog(Landroid/app/Dialog;)V

    .line 880
    if-eqz p1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1300(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 882
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v2, v2, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    .line 883
    invoke-static {v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredHeight()I

    move-result v2

    .line 882
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 884
    .local v0, "maxWidth":I
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$emoji:Z

    if-eqz v1, :cond_0

    .line 885
    div-int/lit8 v0, v0, 0x2

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v1

    new-instance v2, Lcom/vk/attachpicker/stickers/BitmapSticker;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$metaInfo:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v3}, Lcom/vk/attachpicker/stickers/BitmapSticker;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->addStickerView(Lcom/vk/attachpicker/stickers/Sticker;)V

    .line 892
    .end local v0    # "maxWidth":I
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1500(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 894
    iget-boolean v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$emoji:Z

    if-eqz v1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1, v4}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1600(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    .line 899
    :goto_1
    return-void

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->val$activity:Landroid/app/Activity;

    const v2, 0x7f080373

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->this$1:Lcom/vk/attachpicker/screen/EditorScreen$8;

    iget-object v1, v1, Lcom/vk/attachpicker/screen/EditorScreen$8;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1, v4}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1700(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 869
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 872
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$8$1;->val$dialogShow:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    return-void
.end method
