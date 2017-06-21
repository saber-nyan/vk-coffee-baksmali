.class Lcom/vkcoffee/android/fragments/AudioListFragment$12;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->lambda$showDeleteDialog$311(Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$audioFile:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/content/Context;Lcom/vkcoffee/android/AudioFile;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->val$context:Landroid/content/Context;

    .line 965
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$13(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    .line 968
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$12;->val$context:Landroid/content/Context;

    const v1, 0x7f08008b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 969
    return-void
.end method
