.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;
.super Ljava/lang/Object;
.source "CoffeeAboutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 133
    const v1, 0x4ad4ef2

    .line 134
    .local v1, "var7":I
    const v0, 0x1ef3ad1

    .line 136
    .local v0, "var6":I
    new-instance v2, Lcom/vkcoffee/android/api/board/BoardGetTopics;

    const v3, 0x4ad4ef2

    const v4, 0x1ef3ad1

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/api/board/BoardGetTopics;-><init>(II)V

    new-instance v3, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment$6;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 152
    return-void
.end method
