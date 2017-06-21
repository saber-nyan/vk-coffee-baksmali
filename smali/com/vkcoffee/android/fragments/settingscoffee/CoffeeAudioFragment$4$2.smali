.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;->val$input:Landroid/widget/EditText;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 172
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "audioCacheLocation"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    const-string v1, "cacheDirCoffeeNew"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    invoke-static {v3}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-static {v3}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v0

    const-string v1, "viewDir"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-static {v3}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$4;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041f\u0443\u0442\u044c: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void
.end method
