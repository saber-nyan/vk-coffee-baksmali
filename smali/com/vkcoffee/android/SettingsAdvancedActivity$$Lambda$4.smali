.class final synthetic Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final instance:Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;

    invoke-direct {v0}, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;->instance:Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;->instance:Lcom/vkcoffee/android/SettingsAdvancedActivity$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {p1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->lambda$onCreate$689(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
