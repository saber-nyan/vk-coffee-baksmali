.class Lcom/vkcoffee/android/fragments/AudioListFragment$10;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->showEditDialog(Lcom/vkcoffee/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$audioFile:Lcom/vkcoffee/android/AudioFile;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;

.field private final synthetic val$subtitle:Landroid/widget/EditText;

.field private final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/AlertDialog;Lcom/vkcoffee/android/AudioFile;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$title:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$subtitle:Landroid/widget/EditText;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$10;)Lcom/vkcoffee/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 931
    .local v6, "button":Landroid/widget/Button;
    if-eqz v6, :cond_0

    .line 932
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$audioFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$title:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$subtitle:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$10;->val$dialog:Landroid/app/AlertDialog;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/AudioListFragment$10$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$10;Lcom/vkcoffee/android/AudioFile;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    :cond_0
    return-void
.end method
