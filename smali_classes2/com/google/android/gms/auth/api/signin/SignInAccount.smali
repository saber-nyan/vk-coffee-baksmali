.class public Lcom/google/android/gms/auth/api/signin/SignInAccount;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/SignInAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field private zzWP:Ljava/lang/String;

.field private zzWQ:Ljava/lang/String;

.field private zzWR:Landroid/net/Uri;

.field private zzWk:Ljava/lang/String;

.field private zzXj:Ljava/lang/String;

.field private zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzXn:Ljava/lang/String;

.field private zzrG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "idToken"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "photoUrl"    # Landroid/net/Uri;
    .param p7, "googleSignInAccount"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .param p8, "userId"    # Ljava/lang/String;
    .param p9, "refreshToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->versionCode:I

    const-string/jumbo v0, "Email cannot be empty."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzx;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWP:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzrG:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/auth/api/signin/zzd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;
    .locals 10

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/zzd;->zzmT()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/auth/api/signin/SignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzbM(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "photoUrl"

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    const-string/jumbo v0, "providerId"

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/zzd;->zzbL(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/zzd;

    move-result-object v0

    const-string/jumbo v1, "tokenId"

    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "email"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "displayName"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "localId"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "refreshToken"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zza(Lcom/google/android/gms/auth/api/signin/zzd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/SignInAccount;

    move-result-object v0

    const-string/jumbo v1, "googleSignInAccount"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzbH(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/SignInAccount;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_1
.end method

.method private zzmJ()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "email"

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "displayName"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "photoUrl"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "providerId"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "tokenId"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "googleSignInAccount"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzmI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "refreshToken"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string/jumbo v1, "localId"

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWQ:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWP:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWk:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzWR:Landroid/net/Uri;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzrG:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zze;->zza(Lcom/google/android/gms/auth/api/signin/SignInAccount;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/SignInAccount;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0
.end method

.method public zzmI()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzmJ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzmT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    return-object v0
.end method

.method public zzmU()Lcom/google/android/gms/auth/api/signin/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/zzd;->zzbL(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzmV()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXm:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public zzmW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/SignInAccount;->zzXn:Ljava/lang/String;

    return-object v0
.end method
