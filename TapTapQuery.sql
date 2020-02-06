select C.fuid, K.provider, K.place, A.nickname, S.service, T.when
from Customer as C, Kiosk as K, Account as A, Service as S, Tap as T,
where C.fuid = A.fuid