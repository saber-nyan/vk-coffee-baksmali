.class Lcom/vkcoffee/android/upload/UploadUtils$1$2;
.super Ljava/lang/Object;
.source "UploadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/UploadUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/UploadUtils$1;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/UploadUtils$1;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/UploadUtils$1;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkcoffee/android/upload/UploadUtils$1$2;->this$0:Lcom/vkcoffee/android/upload/UploadUtils$1;

    iput-object p2, p0, Lcom/vkcoffee/android/upload/UploadUtils$1$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/upload/UploadUtils$1$2;->this$0:Lcom/vkcoffee/android/upload/UploadUtils$1;

    iget-object v0, v0, Lcom/vkcoffee/android/upload/UploadUtils$1;->val$copiesListener:Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;

    iget-object v1, p0, Lcom/vkcoffee/android/upload/UploadUtils$1$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;->onError(Ljava/lang/Exception;)V

    .line 108
    return-void
.end method
