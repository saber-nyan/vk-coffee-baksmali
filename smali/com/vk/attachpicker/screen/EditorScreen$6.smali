.class Lcom/vk/attachpicker/screen/EditorScreen$6;
.super Lcom/vk/attachpicker/util/AsyncTask;
.source "EditorScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/EditorScreen;->loadImages()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$6;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Lcom/vk/attachpicker/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 811
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 814
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$6;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/editor/ImageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getAutoFixedBitmap()Landroid/graphics/Bitmap;

    .line 815
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 811
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$6;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1002(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/util/AsyncTask;)Lcom/vk/attachpicker/util/AsyncTask;

    .line 821
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$6;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1100(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 822
    return-void
.end method
