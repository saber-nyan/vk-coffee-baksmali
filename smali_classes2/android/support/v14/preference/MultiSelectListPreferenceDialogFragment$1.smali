.class Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

.field final synthetic val$preference:Landroid/support/v14/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Landroid/support/v14/preference/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    iput-object p2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->val$preference:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 60
    if-eqz p3, :cond_0

    .line 61
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->val$preference:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$076(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;I)Z

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->val$preference:Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$076(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;I)Z

    goto :goto_0
.end method
