.class Lcom/vkcoffee/android/fragments/AudioListFragment$11;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->editAudio(Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$audioFile:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$dialog2:Landroid/app/Dialog;

.field private final synthetic val$str:Ljava/lang/String;

.field private final synthetic val$str2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;Landroid/app/Dialog;Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$dialog2:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$str:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$str2:Ljava/lang/String;

    .line 948
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 950
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$dialog2:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 952
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$str:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 953
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->val$str2:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateList()V

    .line 956
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$11;->success(Ljava/lang/Integer;)V

    return-void
.end method
