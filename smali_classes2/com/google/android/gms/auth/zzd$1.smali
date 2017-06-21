.class final Lcom/google/android/gms/auth/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/zzd;->zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzd$zza",
        "<",
        "Lcom/google/android/gms/auth/TokenData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzVg:Landroid/accounts/Account;

.field final synthetic zzVh:Ljava/lang/String;

.field final synthetic zzVi:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zzd$1;->zzVg:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/zzd$1;->zzVh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/zzd$1;->zzVi:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzam(Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzas$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/zzd$1;->zzVg:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/auth/zzd$1;->zzVh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/zzd$1;->zzVi:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/zzd;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "tokenDetails"

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/TokenData;->zzc(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "Error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userRecoveryIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zzbY(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/zzd;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zza(Lcom/google/android/gms/auth/firstparty/shared/zzd;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v2

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/auth/firstparty/shared/zzd;->zzc(Lcom/google/android/gms/auth/firstparty/shared/zzd;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic zzan(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/zzd$1;->zzam(Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    return-object v0
.end method
