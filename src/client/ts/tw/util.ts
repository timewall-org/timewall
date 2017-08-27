export function map<T, R>(l: T[], f: (_: T) => R): R[] {
  if (!(l instanceof Array)) {
    return [f(l as T)];
  }

  var r: R[] = [];
  for (var x of l) {
    r.push(f(x));
  }
  return r;
}

export function ajax(method: string, endpoint: string, body: any = null) {
  return new Promise<any>((resolve, reject) => {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/api/v1");
    xhr.setRequestHeader('Content-Type', 'application/json');

    xhr.onload = () => {
      resolve((JSON.parse(xhr.response));
    };
    xhr.onerror = (...args: any[]) => {
      console.log("XHR ERROR", args, xhr.response);
      reject();
    };

    xhr.send(JSON.stringify(body));
  });
}

export async function api(endpoint: string, request: any = {}) {
  var response = await ajax("POST", "/api/v1", { endpoint: endpoint, request: request });
  if (response.success) {
    return response.result;
  } else {
    throw new Error(response.error);
  }
}

export function sleep(t: number) {
  return new Promise<void>((resolve, reject) => {
    setTimeout(() => {
      resolve();
    }, t);
  });
}