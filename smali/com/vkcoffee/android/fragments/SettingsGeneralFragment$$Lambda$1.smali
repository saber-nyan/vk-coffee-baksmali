.class final synthetic Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;->instance:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;->instance:Lcom/vkcoffee/android/fragments/SettingsGeneralFragment$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/vkcoffee/android/fragments/SettingsGeneralFragment;->lambda$onCreate$588(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
