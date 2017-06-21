.class Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$1;->this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$1;->this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->bindPreferences()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
