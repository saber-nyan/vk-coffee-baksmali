.class final synthetic Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/SettingsAdvancedActivity;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;-><init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;)V

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$5;->arg$1:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->lambda$onCreate$690(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
