.class Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl$1;
.super Lcom/google/android/gms/common/api/internal/zzn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->zzc(ILcom/google/android/gms/common/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaiL:Landroid/app/Dialog;

.field final synthetic zzaiM:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl$1;->zzaiM:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl$1;->zzaiL:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method protected zzpJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl$1;->zzaiM:Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl;->zzpP()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/SupportLifecycleFragmentImpl$1;->zzaiL:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
