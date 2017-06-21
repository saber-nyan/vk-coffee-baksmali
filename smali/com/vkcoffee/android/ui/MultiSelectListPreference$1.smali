.class Lcom/vkcoffee/android/ui/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MultiSelectListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MultiSelectListPreference;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference$1;->this$0:Lcom/vkcoffee/android/ui/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "val"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference$1;->this$0:Lcom/vkcoffee/android/ui/MultiSelectListPreference;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->access$000(Lcom/vkcoffee/android/ui/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 47
    return-void
.end method
