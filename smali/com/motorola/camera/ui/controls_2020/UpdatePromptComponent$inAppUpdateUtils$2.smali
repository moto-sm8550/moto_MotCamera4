.class public final Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdatePromptComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/motorola/camera/utility/InAppUpdateUtils;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/InAppUpdateUtils;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
