.class Lcom/vkcoffee/android/AudioPlayerActivity$22;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->showBroadcastDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$checked:[Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22;->val$checked:[Z

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 898
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$22;->val$checked:[Z

    aput-boolean p3, v0, p2

    .line 899
    return-void
.end method
