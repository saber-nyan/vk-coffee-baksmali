.class final synthetic Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;)V

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->lambda$onCreate$595(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
