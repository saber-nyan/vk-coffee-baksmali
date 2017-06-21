.class final synthetic Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;)V

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/SettingsNotificationsFragment;->lambda$onCreate$606(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
