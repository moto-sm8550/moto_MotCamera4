.class public abstract Lcom/google/android/gms/common/api/internal/zap;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public volatile zaa:Z

.field public final zab:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/zam;",
            ">;"
        }
    .end annotation
.end field

.field public final zac:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public final zad:Lcom/google/android/gms/internal/base/zaq;


# virtual methods
.method public abstract zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public abstract zad()V
.end method
