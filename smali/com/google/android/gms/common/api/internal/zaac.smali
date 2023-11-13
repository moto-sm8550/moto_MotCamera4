.class public final Lcom/google/android/gms/common/api/internal/zaac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zab:Lcom/google/android/gms/common/api/internal/zaad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaac;->zab:Lcom/google/android/gms/common/api/internal/zaad;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaac;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaac;->zab:Lcom/google/android/gms/common/api/internal/zaad;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaac;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
