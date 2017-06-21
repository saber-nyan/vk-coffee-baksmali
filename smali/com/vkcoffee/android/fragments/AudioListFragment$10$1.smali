.class Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$10;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$10;

.field private final synthetic val$audioFile:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;

.field private final synthetic val$subtitle:Landroid/widget/EditText;

.field private final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$10;Lcom/vkcoffee/android/AudioFile;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$10;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$title:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$subtitle:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$dialog:Landroid/app/AlertDialog;

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$10;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$10;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$subtitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$35(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    .line 935
    return-void
.end method
