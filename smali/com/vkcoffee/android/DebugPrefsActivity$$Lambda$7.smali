.class final synthetic Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final instance:Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;

    invoke-direct {v0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;->instance:Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;->instance:Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {p1}, Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$onCreate$282(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
