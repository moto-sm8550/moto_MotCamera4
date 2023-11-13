.class public final Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;
.super Ljava/lang/Object;
.source "OnBackInvokedCallbackHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnBackInvokedCallbackHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnBackInvokedCallbackHelper.kt\ncom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;-><init>()V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    .line 5
    sput-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
