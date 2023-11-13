.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$configWebView$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "OnlineHelpPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const/4 v1, 0x1

    const-string/jumbo v4, "updateState"

    const-string/jumbo v5, "updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->$r8$clinit:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
