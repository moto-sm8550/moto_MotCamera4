.class public final Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;
.super Ljava/lang/Object;
.source "OnBackInvokedCallbackHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

.field public static volatile INSTANCE:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;


# instance fields
.field public mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field public onBackInvokedCallback:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$Companion;

    const-class v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackInvokeCallbackImpl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1, p2, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    return-void
.end method

.method public final unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackInvokeCallbackImpl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->onBackInvokedCallback:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_1
    return-void
.end method
